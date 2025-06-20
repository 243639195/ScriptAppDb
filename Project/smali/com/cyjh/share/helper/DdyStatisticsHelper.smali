.class public Lcom/cyjh/share/helper/DdyStatisticsHelper;
.super Ljava/lang/Object;
.source "DdyStatisticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;,
        Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;
    }
.end annotation


# static fields
.field public static final MSG_DDY_DAILY_STATISTICS:I = 0x3e8

.field private static TAG:Ljava/lang/String; = "DdyStatisticsHelper"

.field public static final TIMER_DELAY:I = 0x2bf20

.field public static final TIMER_PERIOD:I = 0x6ddd00

.field private static instance:Lcom/cyjh/share/helper/DdyStatisticsHelper;


# instance fields
.field private mCallback:Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;

.field private mContext:Landroid/content/Context;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/cyjh/share/helper/DdyStatisticsHelper;)Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mCallback:Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;

    return-object p0
.end method

.method public static get()Lcom/cyjh/share/helper/DdyStatisticsHelper;
    .locals 2

    .line 44
    sget-object v0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->instance:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/cyjh/share/helper/DdyStatisticsHelper;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/cyjh/share/helper/DdyStatisticsHelper;->instance:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/cyjh/share/helper/DdyStatisticsHelper;

    invoke-direct {v1}, Lcom/cyjh/share/helper/DdyStatisticsHelper;-><init>()V

    sput-object v1, Lcom/cyjh/share/helper/DdyStatisticsHelper;->instance:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->instance:Lcom/cyjh/share/helper/DdyStatisticsHelper;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;)Lcom/cyjh/share/helper/DdyStatisticsHelper;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mCallback:Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;

    return-object p0
.end method

.method public startTimer()V
    .locals 8

    .line 61
    sget-object v0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->TAG:Ljava/lang/String;

    const-string v1, "startTimer --> "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimer:Ljava/util/Timer;

    .line 64
    new-instance v0, Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;-><init>(Lcom/cyjh/share/helper/DdyStatisticsHelper;Lcom/cyjh/share/helper/DdyStatisticsHelper$1;)V

    iput-object v0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimerTask:Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimerTask:Lcom/cyjh/share/helper/DdyStatisticsHelper$MyTimerTask;

    const-wide/32 v4, 0x2bf20

    const-wide/32 v6, 0x6ddd00

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 70
    sget-object v0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->TAG:Ljava/lang/String;

    const-string v1, "stopTimer --> "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/cyjh/share/helper/DdyStatisticsHelper;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
