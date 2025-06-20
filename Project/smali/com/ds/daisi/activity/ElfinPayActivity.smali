.class public Lcom/ds/daisi/activity/ElfinPayActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "ElfinPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/cyjh/share/mvp/view/PushMessageView;
.implements Lcom/ds/daisi/mvp/views/BindRegCodeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;,
        Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;,
        Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;,
        Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;,
        Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;
    }
.end annotation


# static fields
.field public static final DEFAULT_THREE_SECOND:I = 0xbb8

.field private static final MINUTE_OF_DAY:I = 0x5a0

.field public static final MSG_DEFAULT_DELAY:I = 0xbb8

.field public static final MSG_UPDATE_VERSION_REQUEST_JUDGE_OPERATE:I = 0x3f4

.field public static final NOTIFY_MESSAGE_BOOT_SCRIPT_RUN:I = 0x3f0

.field public static final NOTIFY_MESSAGE_INIT_DB:I = 0x3ed

.field public static final NOTIFY_MESSAGE_LOAD_MORE_TIME:I = 0x3ee

.field private static final NOTIFY_MESSAGE_PROMPT:I = 0x3ea

.field public static final NOTIFY_MESSAGE_STATISTICS_DAY:I = 0x3ef

.field private static final NOTIFY_TYPE:I = 0x3e9

.field private static final NUMBER_VALUE_60:I = 0x3c

.field private static final REQUEST_CODE_FEEDBACK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ElfinPayActivity"

.field public static final TIMER_NOTIFY_DAILY_STATISTICS:I = 0x3f1

.field public static final TIMER_NOTIFY_EXECUTION_TASK:I = 0x3f2

.field public static final TIME_INTERVAL:I = 0x3e8


# instance fields
.field private appContext:Lcom/ds/daisi/AppContext;

.field public bindRegCodeBackTime:J

.field private databaseOpera:Lcom/ds/daisi/database/MsgDatabaseOpera;

.field private doubleBackToExitPressedOnce:Z

.field private feedBackCommitDialog:Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

.field public isDisplayUI:Z

.field private isFirstPushMessage:Z

.field private isRegCodeResponseNull:Z

.field private mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

.field private mImgRedDot:Landroid/widget/ImageView;

.field private mIsInvokingFromEngineHeart:Z

.field private mNoticeListPresenter:Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private mOnDisplayExpireTimeBackListener:Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

.field private mSharedPres:Landroid/content/SharedPreferences;

.field private mSubmitTimeCount:Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

.field private mTvExpireTime:Landroid/widget/TextView;

.field private msgDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private msgIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private msgPartDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private myTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private swtCallStop:Landroid/widget/Switch;

.field private swtFloatviewCtrl:Landroid/widget/Switch;

.field private swtOpenRunScript:Landroid/widget/Switch;

.field private swtVibration:Landroid/widget/Switch;

.field private swtVolumeKeyCtrl:Landroid/widget/Switch;

.field private swtWaggleStop:Landroid/widget/Switch;

.field private swtWordRecognitionLibrary:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgIdList:Ljava/util/Set;

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->doubleBackToExitPressedOnce:Z

    .line 204
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isFirstPushMessage:Z

    .line 206
    new-instance v1, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;Lcom/ds/daisi/activity/ElfinPayActivity$1;)V

    iput-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const-wide/16 v1, -0x1

    .line 207
    iput-wide v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    .line 215
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isDisplayUI:Z

    .line 216
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->myTouchListeners:Ljava/util/ArrayList;

    .line 817
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isRegCodeResponseNull:Z

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ds/daisi/activity/ElfinPayActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->processInitDbData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->loadMoreTime()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->startCircleRunnable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ds/daisi/activity/ElfinPayActivity;J)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/ElfinPayActivity;->statisDailyLife(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->updateVersionRequestJudgeOperate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->bootRunScript()V

    return-void
.end method

.method static synthetic access$202(Lcom/ds/daisi/activity/ElfinPayActivity;Z)Z
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->doubleBackToExitPressedOnce:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ds/daisi/activity/ElfinPayActivity;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->notifyLoadMoreTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->feedBackCommitDialog:Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ds/daisi/activity/ElfinPayActivity;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mIsInvokingFromEngineHeart:Z

    return p0
.end method

.method static synthetic access$602(Lcom/ds/daisi/activity/ElfinPayActivity;Z)Z
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mIsInvokingFromEngineHeart:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/AppContext;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ds/daisi/activity/ElfinPayActivity;)Landroid/widget/Switch;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWordRecognitionLibrary:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->processPushMessage()V

    return-void
.end method

.method private autoStartEngine()V
    .locals 4

    .line 721
    sget-object v0, Lcom/ds/daisi/activity/ElfinPayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoStartEngine --> mScriptUipSetFragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ds/daisi/AppContext;->mLunchType:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    new-instance v1, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$0;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 725
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    sget-object v1, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$1;->$instance:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32c8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private bootRunScript()V
    .locals 3

    const/4 v0, 0x1

    .line 1129
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->moveTaskToBack(Z)Z

    .line 1130
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/BootService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private checkResolution()V
    .locals 4

    const v0, 0x7f100146

    .line 550
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09006b

    .line 553
    invoke-virtual {p0, v3}, Lcom/ds/daisi/activity/ElfinPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 557
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 555
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private displayExpireTimeOperate()V
    .locals 6

    .line 411
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-wide v0, v0, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3c

    .line 413
    div-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 415
    invoke-direct {p0, v4, v5}, Lcom/ds/daisi/activity/ElfinPayActivity;->displayRemainTime(J)V

    :cond_0
    return-void
.end method

.method private displayRemainTime(J)V
    .locals 0

    .line 406
    invoke-static {p0, p1, p2}, Lcom/ds/daisi/util/ExpireTimeUtil;->convertTimeFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 407
    iget-object p2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mTvExpireTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayTryTime()V
    .locals 5

    .line 839
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    if-gtz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mTvExpireTime:Landroid/widget/TextView;

    const v1, 0x7f090110

    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v1, 0x3

    iput v1, v0, Lcom/ds/daisi/AppContext;->STATE_APP:I

    goto :goto_0

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ds/daisi/AppContext;->STATE_APP:I

    const v0, 0x7f090116

    .line 844
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v3

    iget v3, v3, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 845
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mTvExpireTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v3

    iget v3, v3, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/ds/daisi/activity/ElfinPayActivity;->getTextPartColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private exit()V
    .locals 2

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/services/VerifyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->stopService(Landroid/content/Intent;)Z

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->stopService(Landroid/content/Intent;)Z

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/services/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->stopService(Landroid/content/Intent;)Z

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/services/BootService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->stopService(Landroid/content/Intent;)Z

    .line 599
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->stopService(Landroid/content/Intent;)Z

    .line 600
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->onKillProcess()V

    return-void
.end method

.method private exitAll()V
    .locals 1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->generateOptionJson()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 589
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 591
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->exit()V

    return-void
.end method

.method private initDatabase()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->databaseOpera:Lcom/ds/daisi/database/MsgDatabaseOpera;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/database/MsgDatabaseOpera;->queryAll(Landroid/os/Handler;)V

    .line 448
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/ElfinPayActivity$4;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$4;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initNotify()V
    .locals 5

    .line 877
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "notification"

    .line 878
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNotifyManager:Landroid/app/NotificationManager;

    .line 879
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/activity/MessagePushActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msgData"

    const/16 v2, 0x3e9

    .line 880
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "msgData"

    .line 881
    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 882
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 883
    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x7f0200cb

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 884
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 885
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 886
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 887
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 888
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 889
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private initPager()V
    .locals 6

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f100145

    .line 563
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    .line 564
    new-instance v2, Lcom/ds/daisi/adpter/TabAdapter;

    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/ds/daisi/adpter/TabAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    const v3, 0x7f100147

    .line 565
    invoke-virtual {p0, v3}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ds/daisi/customview/RTDViewPager;

    .line 566
    new-instance v4, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {v4}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;-><init>()V

    iput-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    .line 567
    new-instance v4, Lcom/ds/daisi/fragment/DescriptionFragment;

    invoke-direct {v4}, Lcom/ds/daisi/fragment/DescriptionFragment;-><init>()V

    .line 568
    iget-object v5, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v3, v2}, Lcom/ds/daisi/customview/RTDViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 571
    invoke-virtual {v1, v3}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method private initSideMenu()V
    .locals 5

    const v0, 0x7f1000b6

    .line 503
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f10014f

    .line 504
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtCallStop:Landroid/widget/Switch;

    const v0, 0x7f10014c

    .line 505
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVolumeKeyCtrl:Landroid/widget/Switch;

    const v0, 0x7f10014e

    .line 506
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWaggleStop:Landroid/widget/Switch;

    const v0, 0x7f10014d

    .line 507
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtFloatviewCtrl:Landroid/widget/Switch;

    const v0, 0x7f100150

    .line 508
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVibration:Landroid/widget/Switch;

    const v0, 0x7f100151

    .line 509
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtOpenRunScript:Landroid/widget/Switch;

    const v0, 0x7f100152

    .line 510
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWordRecognitionLibrary:Landroid/widget/Switch;

    const v0, 0x7f100153

    .line 512
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100154

    .line 513
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100155

    .line 514
    invoke-virtual {p0, v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f10014b

    .line 515
    invoke-virtual {p0, v3}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f10014a

    .line 516
    invoke-virtual {p0, v4}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mTvExpireTime:Landroid/widget/TextView;

    .line 517
    iget-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtCallStop:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 518
    iget-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVolumeKeyCtrl:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 519
    iget-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWaggleStop:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 520
    iget-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtFloatviewCtrl:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 521
    iget-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVibration:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 522
    iget-object v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 523
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSwitchStatus()V
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtCallStop:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 707
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVolumeKeyCtrl:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 708
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWaggleStop:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtWaggleStop"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 709
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtFloatviewCtrl:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtFloatviewCtrl"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 710
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVibration:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtVibration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 712
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sp_key_switch_setting_open_run_script"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 714
    sget-object v1, Lcom/ds/daisi/activity/ElfinPayActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSwitchStatus --> openRunScriptFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "110"

    .line 715
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mLunchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->autoStartEngine()V

    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 3

    const v0, 0x7f1000b4

    .line 540
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090069

    .line 541
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f100142

    .line 542
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f100143

    .line 543
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f100144

    .line 544
    invoke-virtual {p0, v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mImgRedDot:Landroid/widget/ImageView;

    .line 545
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initTitle()V

    .line 490
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initSideMenu()V

    .line 491
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->judgeRecognitionLibraryAvailable()V

    .line 493
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->checkResolution()V

    .line 494
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initPager()V

    .line 496
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->isRedVisibility()V

    return-void
.end method

.method private initViewAfter()V
    .locals 2

    .line 245
    new-instance v0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

    invoke-direct {v0, p0}, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;-><init>(Lcom/cyjh/share/mvp/view/PushMessageView;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNoticeListPresenter:Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

    .line 246
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/ElfinPayActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$1;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNoticeListPresenter:Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

    invoke-virtual {v0, p0}, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->loadAd(Landroid/content/Context;)V

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->updateVersionRequestJudgeOperate()V

    .line 267
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initSwitchStatus()V

    return-void
.end method

.method private judgeRecognitionLibraryAvailable()V
    .locals 3

    .line 530
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->isRecognitionLibraryAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWordRecognitionLibrary:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 532
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWordRecognitionLibrary:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWordRecognitionLibrary:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 535
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtWordRecognitionLibrary:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method static final synthetic lambda$autoStartEngine$1$ElfinPayActivity()V
    .locals 2

    .line 725
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/ElfinFloatViewEvent;

    invoke-direct {v1}, Lcom/ds/daisi/entity/ElfinFloatViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private loadMoreTime()V
    .locals 4

    .line 1111
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    if-nez v0, :cond_0

    .line 1112
    new-instance v0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;-><init>(Lcom/ds/daisi/mvp/views/BindRegCodeView;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->bindRegCode(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private notifyLoadMoreTime(Ljava/lang/String;)V
    .locals 1

    .line 480
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iput-object p1, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 481
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/16 v0, 0x3ee

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private processInitDbData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 899
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgIdList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 900
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 901
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/NotifyMsgBean;

    .line 902
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgIdList:Ljava/util/Set;

    iget-object v0, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processPushMessage()V
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mImgRedDot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/NotifyMsgBean;

    .line 913
    iget-boolean v1, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->IsSendMessage:Z

    if-eqz v1, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initNotify()V

    .line 915
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    .line 916
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    .line 917
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 918
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSharedPres:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "red_dot_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 922
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->databaseOpera:Lcom/ds/daisi/database/MsgDatabaseOpera;

    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/database/MsgDatabaseOpera;->insertData(Ljava/util/List;)V

    return-void
.end method

.method private recognitionLibraryDownloadOperate()V
    .locals 4

    .line 977
    new-instance v0, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;

    invoke-direct {v0, p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-virtual {v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->show()V

    .line 979
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object v1

    const-string v2, "http://res2.mobileanjian.com/Resource/ocr3/Android.zip"

    new-instance v3, Lcom/ds/daisi/activity/ElfinPayActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$6;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;Lcom/cyjh/share/dialog/LibraryUILoadingDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->download(Ljava/lang/String;Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;)V

    return-void
.end method

.method private refreshSwitchScriptRun(Z)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private startCircleRunnable()V
    .locals 4

    .line 1157
    sget-boolean v0, Lcom/ds/daisi/AppContext;->sIsBooted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1158
    sput-boolean v0, Lcom/ds/daisi/AppContext;->sIsBooted:Z

    .line 1160
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/ElfinPayActivity$7;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$7;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    .line 1183
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    const-string v3, "PreStart"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadScriptStartRunStatistics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private statisDailyLife(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 278
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x48a8

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v0, v0

    add-long v2, p1, v0

    .line 282
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/ds/daisi/activity/ElfinPayActivity$2;

    invoke-direct {p2, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$2;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private updateVersionRequest(Z)V
    .locals 4

    return-void
.end method

.method private updateVersionRequestJudgeOperate()V
    .locals 4

    .line 926
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->myTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;

    .line 1190
    invoke-interface {v1, p1}, Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1192
    :cond_0
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getTextPartColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6

    .line 1077
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1080
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1081
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    .line 1082
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1083
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1085
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    const-string v5, "#2964AA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v0, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1087
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 1090
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 1091
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x2

    .line 1092
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1094
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const-string v2, "#2964AA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v0, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1097
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v1

    .line 1100
    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 1101
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr p2, v3

    .line 1102
    new-instance p3, Landroid/text/style/StyleSpan;

    invoke-direct {p3, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, p3, p1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1104
    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    const-string p4, "#2964AA"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p3, p1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public isRedVisibility()V
    .locals 3

    const-string v0, "small_red_dot"

    const/4 v1, 0x0

    .line 578
    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSharedPres:Landroid/content/SharedPreferences;

    .line 579
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSharedPres:Landroid/content/SharedPreferences;

    const-string v2, "red_dot_flag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mImgRedDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public judgeTimeOperate()V
    .locals 5

    return-void
.end method

.method final synthetic lambda$autoStartEngine$0$ElfinPayActivity()V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mScriptUipSetFragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->btnRunScriptPerformClick()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 677
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/16 p2, 0x2710

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 690
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 692
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const p3, 0x7f090122

    .line 694
    invoke-virtual {p0, p3}, Lcom/ds/daisi/activity/ElfinPayActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "application/vnd.android.package-archive"

    .line 695
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 681
    new-instance p1, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

    invoke-direct {p1, p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->feedBackCommitDialog:Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

    .line 682
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->feedBackCommitDialog:Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->show()V

    .line 683
    new-instance p1, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;JJLcom/ds/daisi/activity/ElfinPayActivity$1;)V

    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSubmitTimeCount:Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

    .line 684
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSubmitTimeCount:Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;->start()Landroid/os/CountDownTimer;

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 427
    iget-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 431
    :cond_0
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->deleteFloatView()V

    .line 432
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->exitAll()V

    .line 433
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/manager/ActivitysManager;->finishAllActivity()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->doubleBackToExitPressedOnce:Z

    const v0, 0x7f0900e4

    .line 437
    invoke-static {p0, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    .line 438
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    new-instance v1, Lcom/ds/daisi/activity/ElfinPayActivity$3;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$3;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V
    .locals 3

    .line 821
    sget-object v0, Lcom/ds/daisi/activity/ElfinPayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindFailure --> info.Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 823
    iget p1, p1, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Code:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isRegCodeResponseNull:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 824
    iput-boolean p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isRegCodeResponseNull:Z

    .line 825
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/16 v0, 0x3ee

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 828
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v0, -0x1

    .line 829
    iput-wide v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    .line 830
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 831
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->judgeTimeOperate()V

    .line 832
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mOnDisplayExpireTimeBackListener:Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;

    if-eqz p1, :cond_1

    .line 833
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mOnDisplayExpireTimeBackListener:Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;

    invoke-interface {p1}, Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;->onDisplayExpireTimeBack()V

    .line 835
    :cond_1
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->setRegCode(Ljava/lang/String;)V

    return-void
.end method

.method public onBindSuc(Lcom/ds/daisi/entity/BindRegCodeResponse;)V
    .locals 8

    .line 787
    sget-object v0, Lcom/ds/daisi/activity/ElfinPayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindSuc --> bindRegCodeResponse.Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget v0, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 789
    iget-object p1, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Data:Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

    .line 790
    iget-wide v0, p1, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    .line 791
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    iput-wide v0, v2, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 792
    iget-wide v2, p1, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3c

    .line 793
    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 795
    sget-object p1, Lcom/ds/daisi/activity/ElfinPayActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindSuc --> serverTimestamp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",bindRegCodeBackTime="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",currentTimestamp="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",expireTime="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-wide v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 797
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->setRegCode(Ljava/lang/String;)V

    .line 798
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x0

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    .line 799
    iget-wide v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    invoke-direct {p0, v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->displayRemainTime(J)V

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mOnDisplayExpireTimeBackListener:Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;

    if-eqz p1, :cond_2

    .line 802
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mOnDisplayExpireTimeBackListener:Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;

    invoke-interface {p1}, Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;->onDisplayExpireTimeBack()V

    goto :goto_0

    .line 806
    :cond_1
    iget p1, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    const/16 v0, 0x579

    if-ne p1, v0, :cond_2

    .line 808
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 809
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->setRegCode(Ljava/lang/String;)V

    .line 810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "regCodeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    .line 810
    invoke-static {p1, v0}, Lcom/cyjh/share/util/AppUtils;->deleteFileContent(Ljava/lang/String;Landroid/content/Context;)V

    .line 814
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 738
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 740
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v1, 0x1

    const v2, 0x7f090167

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_2

    .line 776
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->recognitionLibraryDownloadOperate()V

    goto :goto_0

    :pswitch_1
    const-string p1, "sp_key_switch_setting_open_run_script"

    .line 770
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 771
    invoke-static {p0, p2}, Lcom/cyjh/share/util/CommonUtil;->operateElfinPackageNames(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_2
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtVibration"

    .line 766
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_3
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    .line 742
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_4
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtWaggleStop"

    .line 754
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_5
    if-nez p2, :cond_0

    .line 758
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVolumeKeyCtrl:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 759
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {p1, v2}, Lcom/ds/daisi/AppContext;->showToast(I)V

    .line 760
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtFloatviewCtrl:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtFloatviewCtrl"

    .line 762
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_6
    if-nez p2, :cond_1

    .line 746
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtFloatviewCtrl:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 747
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {p1, v2}, Lcom/ds/daisi/AppContext;->showToast(I)V

    .line 748
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->swtVolumeKeyCtrl:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtVolumeKeyCtrl"

    .line 750
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 782
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f10014c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 639
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/activity/FeedbackActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    const-class v1, Lcom/ds/daisi/activity/FeedbackActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/entity/ParamsWrap;->feedbackTips:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 628
    :sswitch_1
    invoke-static {}, Lcom/cyjh/share/util/FastClickUtil;->getInstance()Lcom/cyjh/share/util/FastClickUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/util/FastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 631
    :cond_0
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 632
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->updateVersionRequest(Z)V

    goto/16 :goto_1

    :cond_1
    const p1, 0x7f0900f1

    .line 634
    invoke-static {p0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 609
    :sswitch_2
    new-instance p1, Lcom/ds/daisi/util/FileUtils$FileSuffixrFilter;

    const-string v1, ".log"

    invoke-direct {p1, v1}, Lcom/ds/daisi/util/FileUtils$FileSuffixrFilter;-><init>(Ljava/lang/String;)V

    .line 610
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mPathPackagenameLog:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 611
    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    .line 615
    :cond_2
    new-instance v1, Lcom/ds/daisi/util/FileComparator;

    invoke-direct {v1}, Lcom/ds/daisi/util/FileComparator;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 616
    aget-object p1, p1, v1

    .line 617
    new-instance v1, Lcom/ds/daisi/entity/ScriptLog;

    invoke-direct {v1}, Lcom/ds/daisi/entity/ScriptLog;-><init>()V

    .line 618
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/entity/ScriptLog;->setName(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ds/daisi/util/FileUtils;->formetFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1, p1}, Lcom/ds/daisi/entity/ScriptLog;->setFile(Ljava/io/File;)V

    .line 621
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.FlagLastLog"

    .line 622
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ScriptLogActivity.ScriptLog"

    .line 623
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 612
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    const v0, 0x7f0900fd

    invoke-virtual {p1, v0}, Lcom/ds/daisi/AppContext;->showToast(I)V

    return-void

    .line 657
    :sswitch_3
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ds/daisi/util/IntentUtils;->toCallBindRegCodeActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 649
    :sswitch_4
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mImgRedDot:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ds/daisi/activity/MessagePushActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "msgData"

    .line 652
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 654
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 645
    :sswitch_5
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100142 -> :sswitch_5
        0x7f100143 -> :sswitch_4
        0x7f10014b -> :sswitch_3
        0x7f100153 -> :sswitch_2
        0x7f100154 -> :sswitch_1
        0x7f100155 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040025

    .line 226
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->setContentView(I)V

    .line 228
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 231
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    new-instance v0, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;

    .line 232
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 233
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ds/daisi/AppContext;->isEntryMainActivity:Z

    .line 234
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    .line 235
    new-instance p1, Lcom/ds/daisi/database/MsgDatabaseOpera;

    invoke-direct {p1}, Lcom/ds/daisi/database/MsgDatabaseOpera;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->databaseOpera:Lcom/ds/daisi/database/MsgDatabaseOpera;

    .line 236
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    if-nez p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initDatabase()V

    .line 240
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initView()V

    .line 241
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->initViewAfter()V

    .line 242
    invoke-static {p0}, Lkiller/App;->init(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 310
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    const-string v0, "zzz"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElfinPayActivity--onDestory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/ds/daisi/AppContext;->sIsBooted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isForceUpdate:Z

    .line 313
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isEntryMainActivity:Z

    .line 314
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const-string v2, ""

    iput-object v2, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 319
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 320
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cancelAllStatistics()V

    .line 321
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ParamsWrap;->cleanData()V

    .line 322
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNoticeListPresenter:Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNoticeListPresenter:Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->onCancel()V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->onCancel()V

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSubmitTimeCount:Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSubmitTimeCount:Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;->cancel()V

    .line 330
    iput-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mSubmitTimeCount:Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;

    .line 332
    :cond_3
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isEmulator:Z

    return-void
.end method

.method public onMessageThreadMain(Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "zzz"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElfinPayActivity:onMessageThreadMain:--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 382
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/MqRunner;->setRegCode(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    .line 384
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x0

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->getExpireTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageThreadMain(Lcom/ds/daisi/entity/MsgItem;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem;->getMsgType()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 366
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->refreshSwitchScriptRun(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 361
    iput-boolean p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mIsInvokingFromEngineHeart:Z

    .line 362
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->updateVersionRequestJudgeOperate()V

    goto :goto_0

    .line 356
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->databaseOpera:Lcom/ds/daisi/database/MsgDatabaseOpera;

    invoke-virtual {p1}, Lcom/ds/daisi/database/MsgDatabaseOpera;->deleteAll()V

    goto :goto_0

    .line 352
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mImgRedDot:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 337
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 338
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onRefreshTime(Lcom/ds/daisi/entity/RefreshTimeEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 394
    sget-object p1, Lcom/ds/daisi/activity/ElfinPayActivity;->TAG:Ljava/lang/String;

    const-string v0, "onRefreshTime -->"

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->judgeTimeOperate()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 299
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 300
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 301
    invoke-virtual {p0}, Lcom/ds/daisi/activity/ElfinPayActivity;->judgeTimeOperate()V

    .line 303
    iget-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isFirstPushMessage:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mNoticeListPresenter:Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;

    invoke-virtual {v0, p0}, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->loadAd(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 421
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onStop()V

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->isFirstPushMessage:Z

    return-void
.end method

.method public onSuccessfulAcquireNews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 667
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 669
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgIdList:Ljava/util/Set;

    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object v0, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 670
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgDataList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->msgPartDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 671
    iget-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mHandler:Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public registerMyTouchListener(Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;)V
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->myTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnDisplayExpireTimeBack(Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->mOnDisplayExpireTimeBackListener:Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;

    return-void
.end method

.method public unRegisterMyTouchListener(Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;->myTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
